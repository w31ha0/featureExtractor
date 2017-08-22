.class Lcom/mobfox/sdk/services/MobFoxLocationService$1;
.super Landroid/os/AsyncTask;
.source "MobFoxLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/services/MobFoxLocationService;-><init>(Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/services/MobFoxLocationService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/services/MobFoxLocationService;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iput-object p2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 78
    iget-object v3, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->val$context:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, v3, Lcom/mobfox/sdk/services/MobFoxLocationService;->locationManager:Landroid/location/LocationManager;

    .line 80
    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iget-object v2, v2, Lcom/mobfox/sdk/services/MobFoxLocationService;->locationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    const-string v3, "location manager not available"

    invoke-static {v2, v3}, Lcom/mobfox/sdk/services/MobFoxLocationService;->access$000(Lcom/mobfox/sdk/services/MobFoxLocationService;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v5

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iget-object v2, v2, Lcom/mobfox/sdk/services/MobFoxLocationService;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 86
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 87
    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-static {v2, v1}, Lcom/mobfox/sdk/services/MobFoxLocationService;->access$100(Lcom/mobfox/sdk/services/MobFoxLocationService;Landroid/location/Location;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iget-object v2, v2, Lcom/mobfox/sdk/services/MobFoxLocationService;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 92
    .local v0, "GPSEnabled":Z
    if-nez v0, :cond_2

    .line 93
    iget-object v2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    const-string v3, "gps not enabled"

    invoke-static {v2, v3}, Lcom/mobfox/sdk/services/MobFoxLocationService;->access$000(Lcom/mobfox/sdk/services/MobFoxLocationService;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/mobfox/sdk/services/MobFoxLocationService$1$1;

    iget-object v4, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/mobfox/sdk/services/MobFoxLocationService$1$1;-><init>(Lcom/mobfox/sdk/services/MobFoxLocationService$1;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/mobfox/sdk/services/MobFoxLocationService$1$2;

    iget-object v4, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/mobfox/sdk/services/MobFoxLocationService$1$2;-><init>(Lcom/mobfox/sdk/services/MobFoxLocationService$1;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
