.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;
.super Ljava/lang/Enum;
.source "TargetStateDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_AUDIO_SUBTITLES_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_AUDIO_SUBTITLE_SETTINGS:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_CAPABILITY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_CURRENT_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_DIALOG_CANCEL:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_DIALOG_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_ENDSESSOIN:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_ERROR_BADPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_ERROR_BADSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_GENERIC:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_HANDSHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_META_DATA_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_PIN_VERIFICATION_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_STARTSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

.field public static final enum MESSAGE_TYPE_STATE_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_STARTSESSION"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_STARTSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_HANDSHAKE"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_HANDSHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_ENDSESSOIN"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ENDSESSOIN:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_ERROR_BADPAIR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_ERROR_BADSESSION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_GENERIC"

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_GENERIC:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_CAPABILITY"

    const/4 v2, 0x6

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CAPABILITY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 137
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_CURRENT_STATE"

    const/4 v2, 0x7

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CURRENT_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_STATE_CHANGED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_STATE_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_AUDIO_SUBTITLES_CHANGED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_AUDIO_SUBTITLES_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_AUDIO_SUBTITLE_SETTINGS"

    const/16 v2, 0xa

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_AUDIO_SUBTITLE_SETTINGS:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_DIALOG_SHOW"

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_DIALOG_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_DIALOG_CANCEL"

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_DIALOG_CANCEL:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 143
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_META_DATA_CHANGED"

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_META_DATA_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_PIN_VERIFICATION_SHOW"

    const/16 v2, 0xe

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_PIN_VERIFICATION_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const-string/jumbo v1, "MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED"

    const/16 v2, 0xf

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 127
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_STARTSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_HANDSHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ENDSESSOIN:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_GENERIC:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CAPABILITY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CURRENT_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_STATE_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_AUDIO_SUBTITLES_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v1, v0, v8

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_AUDIO_SUBTITLE_SETTINGS:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_DIALOG_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_DIALOG_CANCEL:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_META_DATA_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_PIN_VERIFICATION_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->value:I

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    return-object v0
.end method


# virtual methods
.method public getErrorMsgForLogblob()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SessionMessageType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
