.class public final enum Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;
.super Ljava/lang/Enum;
.source "TWMAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation


# static fields
.field public static final enum INTERNAL_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

.field public static final enum NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

.field private static final synthetic a:[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->a:[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->a:[Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
