.class public final enum Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;
.super Ljava/lang/Enum;
.source "Mdx.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field public static final enum mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_init"

    const-string/jumbo v2, "init"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_mdxstate"

    const-string/jumbo v2, "mdxstate"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_initerror"

    const-string/jumbo v2, "initerror"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_discovery_devicelost"

    const-string/jumbo v2, "devicelost"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_discovery_remoteDeviceReady"

    const-string/jumbo v2, "remoteDeviceReady"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_discovery_devicefound"

    const/4 v2, 0x5

    const-string/jumbo v3, "devicefound"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_pair_pairingresponse"

    const/4 v2, 0x6

    const-string/jumbo v3, "pairingresponse"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_pair_regpairresponse"

    const/4 v2, 0x7

    const-string/jumbo v3, "regpairresponse"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_pair_pairingdeleted"

    const/16 v2, 0x8

    const-string/jumbo v3, "pairingdeleted"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_session_message"

    const/16 v2, 0x9

    const-string/jumbo v3, "message"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_session_startSessionResponse"

    const/16 v2, 0xa

    const-string/jumbo v3, "startSessionResponse"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_session_messagedelivered"

    const/16 v2, 0xb

    const-string/jumbo v3, "messagedelivered"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_session_messagingerror"

    const/16 v2, 0xc

    const-string/jumbo v3, "messagingerror"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_session_sessionended"

    const/16 v2, 0xd

    const-string/jumbo v3, "sessionended"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    const-string/jumbo v1, "mdx_targetrestarting"

    const/16 v2, 0xe

    const-string/jumbo v3, "targetrestarting"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    .line 24
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_initerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_regpairresponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_message:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagedelivered:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_messagingerror:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->name:Ljava/lang/String;

    return-object v0
.end method
