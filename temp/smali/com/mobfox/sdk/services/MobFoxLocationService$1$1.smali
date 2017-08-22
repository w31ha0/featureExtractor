.class Lcom/mobfox/sdk/services/MobFoxLocationService$1$1;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "MobFoxLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/services/MobFoxLocationService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/services/MobFoxLocationService$1;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/services/MobFoxLocationService$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/services/MobFoxLocationService$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1$1;->this$1:Lcom/mobfox/sdk/services/MobFoxLocationService$1;

    invoke-direct {p0, p2}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public mobFoxRun()V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1$1;->this$1:Lcom/mobfox/sdk/services/MobFoxLocationService$1;

    iget-object v0, v0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iget-object v0, v0, Lcom/mobfox/sdk/services/MobFoxLocationService;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x32

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/mobfox/sdk/services/MobFoxLocationService$1$1;->this$1:Lcom/mobfox/sdk/services/MobFoxLocationService$1;

    iget-object v5, v5, Lcom/mobfox/sdk/services/MobFoxLocationService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxLocationService;

    iget-object v5, v5, Lcom/mobfox/sdk/services/MobFoxLocationService;->self:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 101
    return-void
.end method
