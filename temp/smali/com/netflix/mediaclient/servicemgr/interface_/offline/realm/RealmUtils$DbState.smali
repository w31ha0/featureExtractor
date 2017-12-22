.class final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;
.super Ljava/lang/Enum;
.source "RealmUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

.field public static final enum CLOSED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

.field public static final enum INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

.field public static final enum TRANSACTION_IN_PROCESS:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->CLOSED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    const-string/jumbo v1, "INSTANCE_OBTAINED"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    const-string/jumbo v1, "TRANSACTION_IN_PROCESS"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->TRANSACTION_IN_PROCESS:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->CLOSED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->TRANSACTION_IN_PROCESS:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    return-object v0
.end method
