# Query Azure VM Rest API

Simple shell script queries the Azure VM Rest API

## How to use it

```bash
./query.sh [tenantId] [resourceGroup] [clientId] [clientSecret] [query]
```

1. tenantId: Tenant Id
2. resourceGroup: Resource Group
3. clientId: Client Id
4. clientSecret: Client Secret
5. query: Extract value against the data key

## Examples - 1

Command:

```bash
./query.sh f50013c3-1111-abcd-bd23-adc1835380e3 classic-app e84d8b2f-1234-4392-sdfg-e4e70def21ed p-6NjWKxxxxxxxx731S-s~.9hzL_i584JJOPH name
```

Output:

```bash
web1
```

## Examples - 2

Command:

```bash
./query.sh f50013c3-1111-abcd-bd23-adc1835380e3 classic-app e84d8b2f-1234-4392-sdfg-e4e70def21ed p-6NjWKxxxxxxxx731S-s~.9hzL_i584JJOPH properties.hardwareProfile
```

Output:

```bash
{
  "vmSize": "Standard_B1ls"
}
```