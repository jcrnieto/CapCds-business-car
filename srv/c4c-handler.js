const cds = require('@sap/cds')
const { getDestination } = require('@sap-cloud-sdk/connectivity')
const { executeHttpRequest } = require('@sap-cloud-sdk/core')

module.exports = cds.service.impl(function () {

  console.log('>> c4c-handler.js loaded')

  this.on('READ', 'CatalogService.Casesc4c', async (req) => {
    console.log('>> READ CatalogService.Casesc4c handler called')

    const destination = await getDestination({
      destinationName: 'SalesServiceC4C',
      jwt: req.auth?.token
    })

    const response = await executeHttpRequest(destination, {
      method: 'GET',
      url: '/case-service/cases?$top=10'
    })

    return response.data.value.map(({ id, displayId, subject, priority, status }) => ({
      id,
      displayId,
      subject,
      priority,
      status
    }))
  })
})