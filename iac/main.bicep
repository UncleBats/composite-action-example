targetScope = 'subscription'

@minLength(3)
@maxLength(6)
param environment string = 'dev'

var product = 'composite-action-demo'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${product}-${environment}'
  location: 'West Europe'
}
