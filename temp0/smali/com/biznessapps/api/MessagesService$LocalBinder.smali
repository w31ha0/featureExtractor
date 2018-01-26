.class public Lcom/biznessapps/api/MessagesService$LocalBinder;
.super Landroid/os/Binder;
.source "MessagesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/MessagesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/MessagesService;


# direct methods
.method public constructor <init>(Lcom/biznessapps/api/MessagesService;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/biznessapps/api/MessagesService$LocalBinder;->this$0:Lcom/biznessapps/api/MessagesService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/biznessapps/api/MessagesService;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/api/MessagesService$LocalBinder;->this$0:Lcom/biznessapps/api/MessagesService;

    return-object v0
.end method
