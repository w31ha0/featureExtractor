.class public Lcom/biznessapps/facebook/SessionEvents;
.super Ljava/lang/Object;
.source "SessionEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/facebook/SessionEvents$LogoutListener;,
        Lcom/biznessapps/facebook/SessionEvents$AuthListener;
    }
.end annotation


# static fields
.field private static mAuthListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/biznessapps/facebook/SessionEvents$AuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogoutListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/biznessapps/facebook/SessionEvents$LogoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/biznessapps/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/biznessapps/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static addAuthListener(Lcom/biznessapps/facebook/SessionEvents$AuthListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/facebook/SessionEvents$AuthListener;

    .prologue
    .line 35
    sget-object v0, Lcom/biznessapps/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static addLogoutListener(Lcom/biznessapps/facebook/SessionEvents$LogoutListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/facebook/SessionEvents$LogoutListener;

    .prologue
    .line 56
    sget-object v0, Lcom/biznessapps/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public static onLoginError(Ljava/lang/String;)V
    .locals 3
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v2, Lcom/biznessapps/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/facebook/SessionEvents$AuthListener;

    .line 77
    .local v1, "listener":Lcom/biznessapps/facebook/SessionEvents$AuthListener;
    invoke-interface {v1, p0}, Lcom/biznessapps/facebook/SessionEvents$AuthListener;->onAuthFail(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1    # "listener":Lcom/biznessapps/facebook/SessionEvents$AuthListener;
    :cond_0
    return-void
.end method

.method public static onLoginSuccess()V
    .locals 3

    .prologue
    .line 70
    sget-object v2, Lcom/biznessapps/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/facebook/SessionEvents$AuthListener;

    .line 71
    .local v1, "listener":Lcom/biznessapps/facebook/SessionEvents$AuthListener;
    invoke-interface {v1}, Lcom/biznessapps/facebook/SessionEvents$AuthListener;->onAuthSucceed()V

    goto :goto_0

    .line 73
    .end local v1    # "listener":Lcom/biznessapps/facebook/SessionEvents$AuthListener;
    :cond_0
    return-void
.end method

.method public static onLogoutBegin()V
    .locals 3

    .prologue
    .line 82
    sget-object v2, Lcom/biznessapps/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/facebook/SessionEvents$LogoutListener;

    .line 83
    .local v1, "l":Lcom/biznessapps/facebook/SessionEvents$LogoutListener;
    invoke-interface {v1}, Lcom/biznessapps/facebook/SessionEvents$LogoutListener;->onLogoutBegin()V

    goto :goto_0

    .line 85
    .end local v1    # "l":Lcom/biznessapps/facebook/SessionEvents$LogoutListener;
    :cond_0
    return-void
.end method

.method public static onLogoutFinish()V
    .locals 3

    .prologue
    .line 88
    sget-object v2, Lcom/biznessapps/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/facebook/SessionEvents$LogoutListener;

    .line 89
    .local v1, "l":Lcom/biznessapps/facebook/SessionEvents$LogoutListener;
    invoke-interface {v1}, Lcom/biznessapps/facebook/SessionEvents$LogoutListener;->onLogoutFinish()V

    goto :goto_0

    .line 91
    .end local v1    # "l":Lcom/biznessapps/facebook/SessionEvents$LogoutListener;
    :cond_0
    return-void
.end method

.method public static removeAuthListener(Lcom/biznessapps/facebook/SessionEvents$AuthListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/facebook/SessionEvents$AuthListener;

    .prologue
    .line 45
    sget-object v0, Lcom/biznessapps/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public static removeLogoutListener(Lcom/biznessapps/facebook/SessionEvents$LogoutListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/facebook/SessionEvents$LogoutListener;

    .prologue
    .line 66
    sget-object v0, Lcom/biznessapps/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
