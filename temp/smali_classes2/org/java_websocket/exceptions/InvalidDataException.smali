.class public Lorg/java_websocket/exceptions/InvalidDataException;
.super Ljava/lang/Exception;
.source "InvalidDataException.java"


# instance fields
.field private closecode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput p1, p0, Lorg/java_websocket/exceptions/InvalidDataException;->closecode:I

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lorg/java_websocket/exceptions/InvalidDataException;->closecode:I

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    iput p1, p0, Lorg/java_websocket/exceptions/InvalidDataException;->closecode:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCloseCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lorg/java_websocket/exceptions/InvalidDataException;->closecode:I

    return v0
.end method
