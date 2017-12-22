.class public abstract Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;
.super Ljava/lang/Object;
.source "MdxMessage.java"


# static fields
.field protected static final APP_MSG_APP_ACTION:Ljava/lang/String; = "appAction"

.field protected static final APP_MSG_SESSION_ACTION:Ljava/lang/String; = "sessionAction"

.field protected static final PROPERTY_APP_BODY:Ljava/lang/String; = "appBody"

.field protected static final PROPERTY_SESSION_ID:Ljava/lang/String; = "sessionId"

.field protected static final PROPERTY_volume:Ljava/lang/String; = "volume"

.field protected static final PROPERTY_xid:Ljava/lang/String; = "xid"

.field protected static final SESSION_ACTION_APP_MESSAGE:Ljava/lang/String; = "appMessage"

.field protected static final SESSION_ACTION_END_SESSION:Ljava/lang/String; = "endSession"

.field protected static final TYPE_END_SESSION:Ljava/lang/String; = "endSession"

.field protected static final TYPE_MESSAGE_IGNORED:Ljava/lang/String; = "MESSAGE_IGNORED"

.field protected static final TYPE_META_DATA_CHANGED:Ljava/lang/String; = "META_DATA_CHANGED"


# instance fields
.field protected mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;->mType:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public messageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;->mType:Ljava/lang/String;

    return-object v0
.end method
