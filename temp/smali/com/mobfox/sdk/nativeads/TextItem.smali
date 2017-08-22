.class public Lcom/mobfox/sdk/nativeads/TextItem;
.super Ljava/lang/Object;
.source "TextItem.java"


# instance fields
.field text:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/TextItem;->type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/TextItem;->text:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/TextItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/TextItem;->type:Ljava/lang/String;

    return-object v0
.end method
