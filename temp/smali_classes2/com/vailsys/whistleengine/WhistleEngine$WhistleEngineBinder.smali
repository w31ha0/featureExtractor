.class public Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;
.super Landroid/os/Binder;
.source "WhistleEngine.java"


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;


# direct methods
.method public constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/vailsys/whistleengine/WhistleEngine;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    return-object v0
.end method
