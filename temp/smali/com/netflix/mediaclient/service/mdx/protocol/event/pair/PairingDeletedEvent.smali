.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/PairingDeletedEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "PairingDeletedEvent.java"


# static fields
.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private pairingContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_pair_pairingdeleted:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/PairingDeletedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/PairingDeletedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getPairingContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/PairingDeletedEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "pairingContext"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/PairingDeletedEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/pair/PairingDeletedEvent;->pairingContext:Ljava/lang/String;

    .line 43
    return-void
.end method
