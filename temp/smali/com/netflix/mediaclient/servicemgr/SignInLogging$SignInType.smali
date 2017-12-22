.class public final enum Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;
.super Ljava/lang/Enum;
.source "SignInLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

.field public static final enum autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

.field public static final enum emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

.field public static final enum smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

.field public static final enum tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    const-string/jumbo v1, "emailPassword"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    const-string/jumbo v1, "tokenActivate"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    const-string/jumbo v1, "smartLock"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    const-string/jumbo v1, "autologin"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->emailPassword:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->autologin:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    return-object v0
.end method
