using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;
namespace OSHCCSApp.BLL
{
    public class QuestionManager
    {
        QuestionGateway _qGateway = new QuestionGateway();
        internal int SaveQuestion(Question aQuestion)
        {
            return _qGateway.Insert(aQuestion);
        }

        internal DataTable GetQuestionWithAns()
        {
            return _qGateway.GetQuestionWithAns();
        }



        internal DataTable GetUserEmail(Label questons)
        {
            return _qGateway.GetUserEmail(questons);
        }

        internal int SaveAnswer(AnswerQuestion aQuestion)
        {
            return _qGateway.InsertAnswer(aQuestion);
        }

        internal DataTable GetQuestion()
        {
            return _qGateway.GetQuestion();
        }

        internal DataTable GetTotalAnswerdId()
        {
            return _qGateway.GetTotalAnswerdId();
        }

        internal int CountAnsImageRow()
        {
            return _qGateway.CountAnsImageRow();
        }

        internal DataTable ViewFullAnswer(string rmEmail)
        {
            return _qGateway.ViewFullAnswer(rmEmail);
        }

    }
}