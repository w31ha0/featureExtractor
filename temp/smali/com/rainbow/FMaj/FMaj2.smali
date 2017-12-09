.class public Lcom/rainbow/FMaj/FMaj2;
.super Landroid/app/Activity;
.source "FMaj2.java"


# instance fields
.field private myView:Landroid/widget/TextView;

.field private strHelp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const-string v0, "* \u6e38\u620f\u8d77\u6e90\u3001\u5386\u53f2\u3001\u7b80\u4ecb\n\n\u201c\u9ebb\u5c06\u8d77\u6e90\u4e8e\u4e2d\u56fd\uff0c\u539f\u5c5e\u7687\u5bb6\u548c\u738b\u5bab\u8d35\u65cf\u7684\u6e38\u620f\uff0c\u5176\u5386\u53f2\u53ef\u4ee5\u8ffd\u6eaf\u5230\u4e09\u56db\u5343\u5e74\u524d\u3002\u5728\u957f\u671f\u7684\u5386\u53f2\u6f14\u53d8\u8fc7\u7a0b\u4e2d\uff0c\u9ebb\u5c06\u9010\u6b65\u4ece\u5bab\u5ef7\u6d41\u4f20\u5230\u6c11\u95f4\uff0c\u81f3\u6e05\u671d\u4e2d\u671f\u57fa\u672c\u5b9a\u578b\u3002\u9ebb\u5c06\u4f5c\u4e3a\u4e2d\u56fd\u4f20\u7edf\u6587\u5316\u5b9d\u5e93\u4e2d\u7684\u4e00\u4e2a\u91cd\u8981\u7ec4\u6210\u90e8\u5206\uff0c\u5177\u6709\u96c6\u76ca\u667a\u6027\u3001\u8da3\u5473\u6027\u3001\u535a\u5f08\u6027\u4e8e\u4e00\u4f53\u7684\u8fd0\u52a8\u9b45\u529b\uff0c\u53ca\u5185\u6db5\u4e30\u5bcc\u3001\u5e95\u8574\u60a0\u4e45\u7684\u4e1c\u65b9\u6587\u5316\u7279\u5f81\u3002\u51e0\u767e\u5e74\u6765\uff0c\u9ebb\u5c06\u66fe\u7ecf\u98ce\u884c\u4e8e\u5927\u6c5f\u5357\u5317\uff0c\u6d41\u884c\u8303\u56f4\u6d89\u53ca\u5230\u793e\u4f1a\u7684\u5404\u4e2a\u9636\u5c42\uff0c\u5df2\u7ecf\u8fdb\u5165\u5343\u5bb6\u4e07\u6237\uff0c\u800c\u4e14\u6d41\u4f20\u6d77\u5916\uff0c\u6210\u4e3a\u6211\u56fd\u56fd\u5185\u53ca\u56fd\u5916\u534e\u4eba\u4e2d\u6700\u5177\u89c4\u6a21\u548c\u5f71\u54cd\u529b\u7684\u667a\u529b\u4f53\u80b2\u6d3b\u52a8\u3002\n\n\u201c\u7f8e\u5c11\u5973\u9ebb\u5c06\u9986\u201d\u662f\u4e00\u6b3e\u7cbe\u7f8e\u7684\u5355\u673a\u7248\u9ebb\u5c06\u6e38\u620f\u3002\u73a9\u5bb6\u5c06\u4ece\u516d\u4f4d\u7f8e\u5973\u4e2d\u4efb\u9009\u4e09\u4f4d\u4e0e\u81ea\u5df2\u4e00\u8d77\u5f00\u59cb\u6e38\u620f\uff0c\u6240\u6709\u79ef\u5206\u4f1a\u88ab\u81ea\u52a8\u8bb0\u5f55\u4e0b\u6765\u3002\u6e38\u620f\u4f18\u5316\u4e86\u4eba\u5de5\u667a\u80fd\uff0c\u51fa\u724c\u6781\u5feb\uff0c\u7edd\u5bf9\u4e0d\u4f1a\u8ba9\u4f60\u5931\u671b\u3002\n\n* \u9ebb\u5c06\u672f\u8bed\uff1a\n\n\u81ea\u6478\uff1a\u6478\u724c\u4ee5\u540e\u80e1\u724c\u3002\u53e6\u4e09\u5bb6\u90fd\u8f93\u79ef\u5206\u7ed9\u80e1\u724c\u65b9\u3002\n\n\u70b9\u70ae\uff1a\u6253\u51fa\u7684\u724c\u88ab\u53e6\u4e00\u65b9\u80e1\u724c\u3002\u53ea\u6709\u70b9\u70ae\u65b9\u8f93\u79ef\u5206\u7ed9\u80e1\u724c\u65b9\uff0c\u53e6\u4e24\u5bb6\u4e0d\u8f93\u4e0d\u8d62\u3002\n\n\u6d41\u5c40\uff1a\u684c\u4e0a\u6240\u6709\u7684\u724c\u5168\u90e8\u88ab\u6478\u5b8c\uff0c\u4ecd\u6ca1\u6709\u4eba\u80e1\u724c\uff0c\u7b97\u6d41\u5c40\u3002\u6d41\u5c40\u56db\u5bb6\u4e0d\u8f93\u4e0d\u8d62\u3002\n\n* \u7b97\u756a\uff1a\n\n\u6e05\u4e00\u8272\u4e24\u756a\uff08\u81ea\u5df1\u724c\u53ea\u6709\u4e00\u79cd\u82b1\u8272\uff09\n\n\u6697\u4e03\u5bf9\u4e24\u756a\uff08\u624b\u4e2d\u53ea\u6709\u4e03\u5bf9\u724c\uff0c\u56db\u5f20\u76f8\u540c\u7684\u724c\u7b97\u4e24\u5bf9\uff09\n\n\u5927\u4e09\u5143\u4e00\u756a\uff08\u624b\u4e2d\u7684\u724c\u9664\u4e86\u4e00\u5bf9\u5c06\u724c\u5916\uff0c\u5176\u4f59\u90fd\u662f\u4e09\u5f20\u76f8\u540c\u7684\u724c\uff09\n\n\u6760\u4e0a\u70ae\u4e00\u756a\uff08\u5f00\u6760\u540e\u6253\u51fa\u7684\u724c\u70b9\u70ae\uff09\n\n\u6760\u4e0a\u82b1\u4e00\u756a\uff08\u5f00\u6760\u540e\u81ea\u6478\uff09\n\n\u56db\u5f521\u6bcf\u7ec4\u4e00\u756a\uff08\u56db\u5f20\u76f8\u540c\u7684\u724c\uff0c\u65e0\u8bba\u6760\u4e0e\u5426\uff09\n\n* \u5e95\u91d1\uff1a\u6e38\u620f\u4e2d\u8bbe\u5b9a\u4e3a10\u5206\u3002\n\n* \u540e\u8bb0:\n\n2010\u5e744\u6708\uff0c\u5f53\u524d\u7248\u672c1.2\u3002\u611f\u8c22\u4f60\u652f\u6301\u539f\u521b\u6e38\u620f,\u6211\u4eec\u4f1a\u505a\u5f97\u66f4\u597d\u3002"

    iput-object v0, p0, Lcom/rainbow/FMaj/FMaj2;->strHelp:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/rainbow/FMaj/FMaj2;->setRequestedOrientation(I)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/rainbow/FMaj/FMaj2;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 50
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/rainbow/FMaj/FMaj2;->setContentView(I)V

    .line 52
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/rainbow/FMaj/FMaj2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/rainbow/FMaj/FMaj2;->myView:Landroid/widget/TextView;

    .line 53
    iget-object v1, p0, Lcom/rainbow/FMaj/FMaj2;->myView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rainbow/FMaj/FMaj2;->strHelp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
