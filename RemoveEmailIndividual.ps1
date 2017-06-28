#Remove from individual mailbox all copies
#Search-Mailbox -Identity "tom_reedy@carmax.com" -SearchQuery 'Subject:"CPL update - closing"' -DeleteContent -Confirm

#Remove from individual mailbox within a time period
Search-Mailbox -Identity "bill_nash@carmax.com" -SearchQuery 'Subject:"CPL update - closing" sent:2017/6/22..2017/6/23 ' -DeleteContent -Confirm