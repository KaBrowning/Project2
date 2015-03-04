using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace App_Code
{

    /// <summary>
    /// Summary description for CustomerList
    /// </summary>
    public class CustomerList
    {
        private readonly List<Customer> _customerList;

        public CustomerList()
        {
            this._customerList = new List<Customer>();
        }


        /// <summary>
        /// Gets or sets the <see cref="Customer"/> at the specified index.
        /// </summary>
        /// <value>
        /// The <see cref="Customer"/>.
        /// </value>
        /// <param name="index">The index.</param>
        /// <returns></returns>
        public Customer this[int index]
        {
            get { return this._customerList[index]; }
            set
            {
                Trace.Assert(true, "Invalid customer selection");
                this._customerList[index] = value;
            }
        }

        /// <summary>
        /// Gets the <see cref="Customer"/> with the specified name.
        /// </summary>
        /// <value>
        /// The <see cref="Customer"/>.
        /// </value>
        /// <param name="name">The name.</param>
        /// <returns></returns>
        public Customer this[String name]
        {
            get
            {
                return this._customerList.FirstOrDefault(c => c.CustumerId == name);
            }
        }

        /// <summary>
        /// Counts this instance.
        /// </summary>
        /// <returns></returns>
        public int Count()
        {
            return this._customerList.Count;
        }


        /// <summary>
        /// Adds a customer to the list.
        /// </summary>
        /// <param name="newCustomer">The new customer.</param>
        public void AddItem(Customer newCustomer)
        {
            this._customerList.Add(newCustomer);
        }

        /// <summary>
        /// Removes customer at specified index.
        /// </summary>
        /// <param name="index">The index.</param>
        public void RemoveAt(int index)
        {
            this._customerList.RemoveAt(index);
        }

        /// <summary>
        /// Clears this list of customers.
        /// </summary>
        public void Clear()
        {
            this._customerList.Clear();
        }

        /// <summary>
        /// Gets the CustomerList object stored in the session state.
        /// </summary>
        /// <returns></returns>
        public static CustomerList GetCustomers()
        {
            var custList = (CustomerList)HttpContext.Current.Session["Customer"];
            if (custList == null)
                HttpContext.Current.Session["Customer"] = new CustomerList();
            return (CustomerList)HttpContext.Current.Session["Customer"];
        }
    }
}