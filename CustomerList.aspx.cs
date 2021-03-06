﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerList : System.Web.UI.Page
{
    private App_Code.CustomerList _custList;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this._custList = (App_Code.CustomerList) Session["Customer"];
        }
    }

    protected void btnAddToContacts_Click(object sender, EventArgs e)
    {
        
    }

    /// <summary>
    /// Handles the Click event of the btnViewList control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnViewList_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ContactList.aspx");
    }
}