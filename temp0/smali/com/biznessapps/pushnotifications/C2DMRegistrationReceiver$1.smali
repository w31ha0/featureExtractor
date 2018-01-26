.class Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;
.super Ljava/lang/Object;
.source "C2DMRegistrationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->this$0:Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;

    iput-object p2, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->val$deviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->this$0:Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;

    iget-object v1, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->val$deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver$1;->val$registrationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/pushnotifications/C2DMRegistrationReceiver;->sendDataToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
