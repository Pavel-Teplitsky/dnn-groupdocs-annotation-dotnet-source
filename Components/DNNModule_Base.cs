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
DISCLAIMER: groupdocs_dnn_installable_annotation template is not affiliated nor endorsed by DNN Corp. 
 * 
 */
using System;
using System.Collections;
using System.Threading;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Framework;

namespace groupdocs_dnn_installable_annotation.Components
{
    [Serializable]

    #region Class DnnModuleBase

    public class DnnModuleBase : PortalModuleBase, IActionable
    {
        #region "Private Vars"

        private readonly ModuleController _moduleController = new ModuleController();

        #endregion

        protected ModuleActionCollection MyActions = new ModuleActionCollection();

    #endregion

        public CDefault BasePage
        {
            get
            {
                try
                {
                    return (CDefault)Page;
                }
                catch
                {
                    return null;
                }
            }
        }

        public void SetModuleConfiguration(ModuleInfo config)
        {
            ModuleConfiguration = config;
        }

        protected virtual void Page_Init(Object sender, EventArgs e)
        {
            try
            {
            }
            catch (ThreadAbortException taexp)
            {
            }
            catch (Exception exp)
            {
            }
        }

        #region Optional Interfaces

        public virtual ModuleActionCollection ModuleActions
        {
            get { return MyActions; }
        }

        public string ReadSetting(string setting)
        {
            setting = setting.Trim().ToLower();
            try
            {
                Hashtable ht = _moduleController.GetModuleSettings(ModuleId);
                if (ht[setting] != null)
                {
                    return (string)ht[setting];
                }
            }
            catch
            {
                return "";
            }
            return "";
        }

        public void SaveSetting(string setting, string settingValue)
        {
            setting = setting.Trim().ToLower();
            try
            {
                _moduleController.UpdateModuleSetting(ModuleId, setting, settingValue);
            }
            catch (Exception)
            {
            }
        }

        #endregion
    }
}