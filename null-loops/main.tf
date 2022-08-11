/* Alta3 Research - rzfeeser@alta3.com
   Working with "for_each" within a null_resource */


/* a list of local variables */
locals {
  avengers = ["the wasp", "ironman", "captain america", "thor","doctor strange","spider man","hulk","black panther","black widow"]
}


/* The null_resource implements the standard resource lifecycle but takes no more action */
resource "null_resource" "avengers" {
  count = length(local.avengers)
  //for_each = toset(local.avengers)
  /* triggers allows specifying a random set of values that when
     changed will cause the resource to be replaced */
  triggers = {
    name = local.avengers[count.index]
    // name = each.value  // a special variable, "each" created by terraform
                       // the object has "each.key" and "each.value"
  }
}

/* We want these outputs */
output "avengers" {
  value = null_resource.avengers
}

