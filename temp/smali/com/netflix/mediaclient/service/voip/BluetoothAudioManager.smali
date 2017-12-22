.class public Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAudioManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_voip_bluetooth"


# instance fields
.field private isBluetoothConnected:Z

.field private isScoConnected:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothConnected:Z

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mListener:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;)Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mListener:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;

    return-object v0
.end method

.method private startBluetooth()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothConnected:Z

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Already started, skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_2

    .line 66
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Headset profile was already opened, let\'s close it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 70
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$1;-><init>(Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] getProfileProxy failed !"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_3
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Interface disabled on device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->stopBluetooth()V

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string/jumbo v1, "nf_voip_bluetooth"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableBluetoothSCO()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 153
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] SCO disconnected!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] broadcast receiver started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->startBluetooth()V

    .line 54
    return-void
.end method

.method public isBluetoothHeadsetAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 135
    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 136
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 137
    const/4 v0, 0x1

    .line 141
    :goto_0
    const-string/jumbo v2, "nf_voip_bluetooth"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "[BluetoothAudioManager] Headset found, bluetooth audio route available"

    :goto_1
    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_2
    return v0

    .line 141
    :cond_1
    const-string/jumbo v1, "[BluetoothAudioManager] No headset found, bluetooth audio route unavailable"

    goto :goto_1

    :cond_2
    move v0, v1

    .line 146
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public isUsingBluetoothAudioRoute()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isScoConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    if-ne v0, v3, :cond_1

    .line 187
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] SCO state: connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isScoConnected:Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] SCO state: disconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isScoConnected:Z

    goto :goto_0

    .line 194
    :cond_2
    const-string/jumbo v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string/jumbo v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    if-nez v0, :cond_3

    .line 197
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] State: disconnected, stopping Blutooth"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->stopBluetooth()V

    goto :goto_0

    .line 199
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 200
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] State: connected, starting Bluetooth"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->startBluetooth()V

    goto :goto_0
.end method

.method public routeAudioToBluetooth()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothHeadsetAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] SCO off, let\'s start it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isUsingBluetoothAudioRoute()Z

    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    const-string/jumbo v1, "nf_voip_bluetooth"

    const-string/jumbo v2, "[BluetoothAudioManager] Audio route ok"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 115
    :cond_2
    const-string/jumbo v1, "nf_voip_bluetooth"

    const-string/jumbo v2, "[BluetoothAudioManager] Audio route not ok."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopBluetooth()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Stopping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothConnected:Z

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->disableBluetoothSCO()V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 165
    iput-object v3, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 167
    :cond_0
    iput-object v3, p0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 169
    const-string/jumbo v0, "nf_voip_bluetooth"

    const-string/jumbo v1, "[BluetoothAudioManager] Stopped!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method
