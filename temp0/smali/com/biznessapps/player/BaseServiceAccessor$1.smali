.class Lcom/biznessapps/player/BaseServiceAccessor$1;
.super Ljava/lang/Object;
.source "BaseServiceAccessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/player/BaseServiceAccessor;->getServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/player/BaseServiceAccessor;


# direct methods
.method constructor <init>(Lcom/biznessapps/player/BaseServiceAccessor;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor$1;, "Lcom/biznessapps/player/BaseServiceAccessor.1;"
    iput-object p1, p0, Lcom/biznessapps/player/BaseServiceAccessor$1;->this$0:Lcom/biznessapps/player/BaseServiceAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "classname"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 46
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor$1;, "Lcom/biznessapps/player/BaseServiceAccessor.1;"
    iget-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor$1;->this$0:Lcom/biznessapps/player/BaseServiceAccessor;

    iget-object v1, p0, Lcom/biznessapps/player/BaseServiceAccessor$1;->this$0:Lcom/biznessapps/player/BaseServiceAccessor;

    invoke-virtual {v1, p2}, Lcom/biznessapps/player/BaseServiceAccessor;->createServiceStub(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    iput-object v1, v0, Lcom/biznessapps/player/BaseServiceAccessor;->service:Landroid/os/IInterface;

    .line 47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 51
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor$1;, "Lcom/biznessapps/player/BaseServiceAccessor.1;"
    iget-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor$1;->this$0:Lcom/biznessapps/player/BaseServiceAccessor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/biznessapps/player/BaseServiceAccessor;->service:Landroid/os/IInterface;

    .line 52
    return-void
.end method
