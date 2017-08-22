.class public Lcom/mobfox/sdk/nativeads/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Tracker;->type:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/Tracker;->url:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Tracker;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Tracker;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Tracker;->type:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Tracker;->url:Ljava/lang/String;

    .line 30
    return-void
.end method
