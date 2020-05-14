/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
var mailAdress = {
	mail: []
		// name: []
};
var mail1 = [];
var mail2 = [];
var ApprovalUser = $.context.User.d.results;
var UserMail = $.context.Mail.d.results;
for (var i = 0; i < ApprovalUser.length; i++) {
	for (var m = 0; m < UserMail.length; m++) {
		if (ApprovalUser[i].APPROVALACCOUNT === UserMail[m].ACCOUNT) {
			mail1.push(UserMail[m].EMAIL);
			// mailAdress.name.push(UserMail[m].FULLNAME);
		}
	}
}
for (var i = 0; i < mail1.length; i++) {
	if (mail2.indexOf(mail1[i]) === -1) {
		mail2.push(mail1[i]);
	}
}
mailAdress.mail = mail2;
$.context.mailAdress = mailAdress;