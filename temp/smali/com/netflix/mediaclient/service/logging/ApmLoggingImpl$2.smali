.class Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;
.super Ljava/lang/Object;
.source "ApmLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

.field final synthetic val$ev:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

.field final synthetic val$us:Lcom/netflix/mediaclient/service/logging/apm/UserSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/UserSession;Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$us:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$ev:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$us:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$302(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/UserSession;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$us:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->setId(J)V

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$402(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$us:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$ev:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 223
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$ev:Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$500(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$600(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$700(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 225
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->val$us:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getPendingEndEvent()Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/EventHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 229
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Pending user session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method
