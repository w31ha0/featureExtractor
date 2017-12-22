.class Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;
.super Ljava/lang/Object;
.source "ApmLoggingImpl.java"


# instance fields
.field private mMobileConnected:Z

.field private mWiFiConnected:Z

.field private mWiredConnected:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;)V
    .locals 0

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    return-void
.end method

.method private lostConnectivity()V
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->reset()V

    .line 1104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$900(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1000(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1107
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1110
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiFiConnected:Z

    .line 1111
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mMobileConnected:Z

    .line 1112
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiredConnected:Z

    .line 1113
    return-void
.end method


# virtual methods
.method public handleConnectivityChange(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1034
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "handleConnectivityChange started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1037
    if-nez v0, :cond_0

    .line 1038
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Connectivity manager is gone! Connectivity is lost!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->lostConnectivity()V

    .line 1100
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1044
    if-nez v0, :cond_1

    .line 1045
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Connectivity manager exist, but no active connection! Connectivity is lost!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->lostConnectivity()V

    goto :goto_0

    .line 1050
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 1051
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1057
    sparse-switch v0, :sswitch_data_0

    .line 1097
    const-string/jumbo v1, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not supported network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :sswitch_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiFiConnected:Z

    .line 1060
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mMobileConnected:Z

    .line 1061
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiredConnected:Z

    .line 1062
    if-eqz v1, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$800(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1067
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1000(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1068
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$900(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    goto :goto_1

    .line 1071
    :sswitch_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiFiConnected:Z

    .line 1072
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mMobileConnected:Z

    .line 1073
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiredConnected:Z

    .line 1074
    if-eqz v1, :cond_3

    .line 1075
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1079
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$900(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1080
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    goto :goto_0

    .line 1077
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1000(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    goto :goto_2

    .line 1084
    :sswitch_2
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiFiConnected:Z

    .line 1085
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mMobileConnected:Z

    .line 1086
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiredConnected:Z

    .line 1087
    if-eqz v1, :cond_4

    .line 1088
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1092
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$900(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    .line 1093
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1000(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    goto/16 :goto_0

    .line 1090
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->this$0:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->access$1100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V

    goto :goto_3

    .line 1057
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isMobileConnected()Z
    .locals 1

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mMobileConnected:Z

    return v0
.end method

.method public isWiFiConnected()Z
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiFiConnected:Z

    return v0
.end method

.method public isWiredConnected()Z
    .locals 1

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->mWiredConnected:Z

    return v0
.end method
