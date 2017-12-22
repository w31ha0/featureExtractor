.class Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;
.super Ljava/lang/Object;
.source "PServiceWidgetAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$imageTypeList:Ljava/util/List;

.field final synthetic val$imageUrlsList:Ljava/util/List;

.field final synthetic val$remoteView:Landroid/widget/RemoteViews;

.field final synthetic val$type:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Ljava/util/List;ILjava/util/List;Landroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$imageUrlsList:Ljava/util/List;

    iput p3, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$widgetId:I

    iput-object p4, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$imageTypeList:Ljava/util/List;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$remoteView:Landroid/widget/RemoteViews;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$id:Ljava/lang/String;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$type:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1063
    .line 1064
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$imageUrlsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1065
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v5, "decoding (%d), bitmap (%d), %s, %s, "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$widgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$imageTypeList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1067
    iget-object v5, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$imageTypeList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v5, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->access$000(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1068
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$remoteView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->access$100(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;I)I

    move-result v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1069
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1070
    goto :goto_0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$remoteView:Landroid/widget/RemoteViews;

    iget v3, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$widgetId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$id:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;->val$type:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->access$200(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 1072
    return-void
.end method
