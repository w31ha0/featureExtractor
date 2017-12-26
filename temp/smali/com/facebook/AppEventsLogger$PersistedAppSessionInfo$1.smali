.class Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1385
    invoke-static {}, Lcom/facebook/AppEventsLogger;->access$0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo;->saveAppSessionInformation(Landroid/content/Context;)V

    .line 1386
    return-void
.end method
