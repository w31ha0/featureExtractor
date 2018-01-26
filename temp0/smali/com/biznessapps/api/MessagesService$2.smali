.class Lcom/biznessapps/api/MessagesService$2;
.super Lcom/biznessapps/api/AsyncCallback;
.source "MessagesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/MessagesService;->checkMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/MessagesService;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/MessagesService;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/biznessapps/api/MessagesService$2;->this$0:Lcom/biznessapps/api/MessagesService;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/MessagesService$2;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MessageItem;>;"
    iget-object v2, p0, Lcom/biznessapps/api/MessagesService$2;->this$0:Lcom/biznessapps/api/MessagesService;

    invoke-static {v2}, Lcom/biznessapps/api/MessagesService;->access$100(Lcom/biznessapps/api/MessagesService;)Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/CachingManager;->getMessagesList()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "previousItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MessageItem;>;"
    iget-object v2, p0, Lcom/biznessapps/api/MessagesService$2;->this$0:Lcom/biznessapps/api/MessagesService;

    invoke-static {v2, v0, v1}, Lcom/biznessapps/api/MessagesService;->access$200(Lcom/biznessapps/api/MessagesService;Ljava/util/List;Ljava/util/List;)V

    .line 94
    return-void
.end method
