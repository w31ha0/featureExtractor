.class public final enum Lgraphview/GraphView$LegendAlign;
.super Ljava/lang/Enum;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgraphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgraphview/GraphView$LegendAlign;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lgraphview/GraphView$LegendAlign;

.field private static final synthetic ENUM$VALUES:[Lgraphview/GraphView$LegendAlign;

.field public static final enum MIDDLE:Lgraphview/GraphView$LegendAlign;

.field public static final enum TOP:Lgraphview/GraphView$LegendAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    new-instance v0, Lgraphview/GraphView$LegendAlign;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lgraphview/GraphView$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgraphview/GraphView$LegendAlign;->TOP:Lgraphview/GraphView$LegendAlign;

    new-instance v0, Lgraphview/GraphView$LegendAlign;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lgraphview/GraphView$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgraphview/GraphView$LegendAlign;->MIDDLE:Lgraphview/GraphView$LegendAlign;

    new-instance v0, Lgraphview/GraphView$LegendAlign;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lgraphview/GraphView$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgraphview/GraphView$LegendAlign;->BOTTOM:Lgraphview/GraphView$LegendAlign;

    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Lgraphview/GraphView$LegendAlign;

    sget-object v1, Lgraphview/GraphView$LegendAlign;->TOP:Lgraphview/GraphView$LegendAlign;

    aput-object v1, v0, v2

    sget-object v1, Lgraphview/GraphView$LegendAlign;->MIDDLE:Lgraphview/GraphView$LegendAlign;

    aput-object v1, v0, v3

    sget-object v1, Lgraphview/GraphView$LegendAlign;->BOTTOM:Lgraphview/GraphView$LegendAlign;

    aput-object v1, v0, v4

    sput-object v0, Lgraphview/GraphView$LegendAlign;->ENUM$VALUES:[Lgraphview/GraphView$LegendAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgraphview/GraphView$LegendAlign;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lgraphview/GraphView$LegendAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgraphview/GraphView$LegendAlign;

    return-object v0
.end method

.method public static values()[Lgraphview/GraphView$LegendAlign;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lgraphview/GraphView$LegendAlign;->ENUM$VALUES:[Lgraphview/GraphView$LegendAlign;

    array-length v1, v0

    new-array v2, v1, [Lgraphview/GraphView$LegendAlign;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
