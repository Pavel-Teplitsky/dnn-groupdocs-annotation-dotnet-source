/*
 * Copyright (c) 2010 Subodh.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 * 
 * 
DISCLAIMER: groupdocs_dnn_installable_annotation template is not affiliated nor endorsed by DNN Corp. 
 */

using System;
using groupdocs_dnn_installable_annotation.Components;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Common;
using DotNetNuke.Services.Exceptions;
namespace groupdocs_dnn_installable_annotation
{
    public partial class Edit : DnnModuleBase
    {
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.Load += new System.EventHandler(this.Page_Load);
        }

        /// -----------------------------------------------------------------------------
        /// <summary>
        /// Page_Load runs when the control is loaded
        /// </summary>
        /// -----------------------------------------------------------------------------
        private void Page_Load(object sender, System.EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var dc = new ModuleController();
                    var module = dc.GetModule(ModuleId);

                    if (module != null)
                    {
                        Title.Text = module.ModuleTitle;
                        txtDescription.Text = module.DesktopModule.Description;
                    }
                    else
                        Response.Redirect(Globals.NavigateURL(), true);
                }
            }
            catch (Exception exc) //Module failed to load
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }
        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                var controller = new ModuleController();
                var module = controller.GetModule(ModuleId);

                module.ModuleTitle = Title.Text;
                module.DesktopModule.Description = txtDescription.Text;

                controller.UpdateModule(module);
                Response.Redirect(Globals.NavigateURL(), true);
            }
            catch (Exception exc)
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }
        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Globals.NavigateURL(), true);
        }

    }
}
