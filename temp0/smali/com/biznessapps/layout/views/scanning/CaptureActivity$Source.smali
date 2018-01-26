.class final enum Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;
.super Ljava/lang/Enum;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/views/scanning/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

.field public static final enum NATIVE_APP_INTENT:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

.field public static final enum NONE:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

.field public static final enum PRODUCT_SEARCH_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

.field public static final enum ZXING_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    const-string v1, "NATIVE_APP_INTENT"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NATIVE_APP_INTENT:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    new-instance v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    const-string v1, "PRODUCT_SEARCH_LINK"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->PRODUCT_SEARCH_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    new-instance v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    const-string v1, "ZXING_LINK"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->ZXING_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    new-instance v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NONE:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    sget-object v1, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NATIVE_APP_INTENT:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->PRODUCT_SEARCH_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->ZXING_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NONE:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    aput-object v1, v0, v5

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->$VALUES:[Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->$VALUES:[Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    invoke-virtual {v0}, [Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    return-object v0
.end method
