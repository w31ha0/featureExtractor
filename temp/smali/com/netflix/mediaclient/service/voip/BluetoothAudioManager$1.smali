.class Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;
.super Ljava/lang/Object;
.source "BluetoothAudioManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    if-ne p1, v2, :cond_0

    .line 73
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Headset connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->access$002(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->access$102(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;Z)Z

    .line 77
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->access$002(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->access$102(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;Z)Z

    .line 82
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Headset disconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->access$200(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;)Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;->routeAudioToEarpiece()V

    .line 85
    :cond_0
    return-void
.end method
