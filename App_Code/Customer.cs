using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    private string _customerId;
    private string _name;
    private string _address;
    private string _city;
    private string _state;
    private string _zipcode;
    private string _phone;
    private string _email;

    /// <summary>
    /// Gets or sets the costumer identifier.
    /// </summary>
    /// <value>
    /// The costumer identifier.
    /// </value>
    public string CustumerId
    {
        get { return this._customerId; }
        set
        {
            Trace.Assert(value != null, "Invalid Customer ID");
            this._customerId = value;
        }
    }

    /// <summary>
    /// Gets or sets the name.
    /// </summary>
    /// <value>
    /// The name of the customer.
    /// </value>
    public string Name
    {
        get { return this._name; }
        set
        {
            Trace.Assert(value != null, "Invalid Name");
            this._name = value;
        }
    }

    /// <summary>
    /// Gets or sets the address.
    /// </summary>
    /// <value>
    /// The address of the customer.
    /// </value>
    public string Address
    {
        get { return this._address; }
        set
        {
            Trace.Assert(value != null, "Invalid Address");
            this._address = value;
        }
    }

    /// <summary>
    /// Gets or sets the city.
    /// </summary>
    /// <value>
    /// The city where the customer lives.
    /// </value>
    public string City
    {
        get { return this._city; }
        set
        {
            Trace.Assert(value != null, "Invalid City");
            this._city = value;
        }
    }

    /// <summary>
    /// Gets or sets the state.
    /// </summary>
    /// <value>
    /// The state where the customer lives.
    /// </value>
    public string State
    {
        get { return this._state; }
        set
        {
            Trace.Assert(value != null, "Invalid State");
            this._state = value;
        }
    }

    /// <summary>
    /// Gets or sets the zipcode.
    /// </summary>
    /// <value>
    /// The zipcode of the customer.
    /// </value>
    public string Zipcode
    {
        get { return this._zipcode; }
        set
        {
            Trace.Assert(value != null, "Invalid Zipcode");
            this._zipcode = value;
        }
    }

    /// <summary>
    /// Gets or sets the phone.
    /// </summary>
    /// <value>
    /// The phone number of the customer.
    /// </value>
    public string Phone
    {
        get { return this._phone; }
        set
        {
            Trace.Assert(value != null, "Invalid Phone Number");
            this._phone = value;
        }
    }

    /// <summary>
    /// Gets or sets the email.
    /// </summary>
    /// <value>
    /// The email of the customer.
    /// </value>
    public string Email
    {
        get { return this._email; }
        set
        {
            Trace.Assert(value != null, "Invalid Email");
            this._email = value;
        }
    }
}