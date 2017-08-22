.class Lcom/mobfox/sdk/background/GetLocation$1;
.super Ljava/lang/Object;
.source "GetLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/background/GetLocation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/background/GetLocation;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/background/GetLocation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/background/GetLocation;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mobfox/sdk/background/GetLocation$1;->this$0:Lcom/mobfox/sdk/background/GetLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mobfox/sdk/background/GetLocation$1;->this$0:Lcom/mobfox/sdk/background/GetLocation;

    iget-object v0, v0, Lcom/mobfox/sdk/background/GetLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/background/GetLocation$1;->this$0:Lcom/mobfox/sdk/background/GetLocation;

    iget-object v0, v0, Lcom/mobfox/sdk/background/GetLocation;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x32

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/mobfox/sdk/background/GetLocation$1;->this$0:Lcom/mobfox/sdk/background/GetLocation;

    iget-object v5, v5, Lcom/mobfox/sdk/background/GetLocation;->self:Lcom/mobfox/sdk/background/GetLocation;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method
