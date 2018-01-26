.class public final Lcom/paypal/android/a/a/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x156f

    const/16 v7, 0x155e

    const/16 v6, 0x1527

    const/16 v5, 0x14f2

    const/16 v4, 0x1ae

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_21.png"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "shopping-cart-disabled.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_30.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x16c0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "tab-selected.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1bfb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_08.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1dc7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "system-icon-confirmation.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x3325

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "system-icon-alert.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x35f3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "collapse-arrow-beige.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x378a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_16.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x3959

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_04.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4e80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "tab-unselected-email.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x6398

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "shopping-list-enabled.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x67e7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_13.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x699b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_24.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x6caa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_12.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x812e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "expand-arrow-beige.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x9620

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_40.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x97ce

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_00.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0xa047

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_20.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0xb539

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "system-icon-error.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0xcacd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_19.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0xcc76

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_07.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0xe20b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "arrow-right.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0xf778

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_15.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x102e7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "shopping-list-disabled.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x11845

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_03.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x119f6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_23.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x12f59

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_11.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x14474

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "system-icon-notification.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1596b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_40.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x15bb6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_18.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x167b6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "checkbox-uncheck.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x17c6d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_06.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x17fb7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_22.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x194e6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "tab-unselected.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1993b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "tab-selected-phone.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x19b32

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_14.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x19e0e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "collapse-arrow-blue.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1b332

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_02.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1b502

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_30.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1ca48

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "lock-icon.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1ce41

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "expand-arrow-blue.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1d002

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_22.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1d1b0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_10.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1e700

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "arrow-down.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1fc27

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_09.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x20790

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "tab-selected-email.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x21cc4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_17.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x22006

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_13.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x234f3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "banner-sandbox.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x2379d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "shopping-cart-enabled.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x25ac3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_05.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x25c32

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "banner-demo.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x270c8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "checkbox-checked.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x28fb5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_13.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x29437

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "tab-unselected-phone.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x2a94e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_22.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x2aced

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->a:Ljava/util/Hashtable;

    const-string v1, "loading_frame_01.png"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x2b0b5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_21.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "shopping-cart-disabled.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x151

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_30.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x53b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "tab-selected.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1cc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_08.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "system-icon-confirmation.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2ce

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "system-icon-alert.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x197

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "collapse-arrow-beige.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1cf

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_16.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_04.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1518

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "tab-unselected-email.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x44f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "shopping-list-enabled.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1b4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_13.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x30f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_24.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1484

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_12.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "expand-arrow-beige.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_40.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x879

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_00.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_20.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1594

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "system-icon-error.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1a9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_19.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1595

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_07.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x156d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "arrow-right.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb6f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_15.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "shopping-list-disabled.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1b1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_03.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1563

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_23.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x151b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_11.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14f7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "system-icon-notification.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x24b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_40.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc00

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_18.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14b7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "checkbox-uncheck.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x34a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_06.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x152f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_22.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x455

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "tab-unselected.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1f7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "tab-selected-phone.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2dc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_14.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1524

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "collapse-arrow-blue.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1d0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_02.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1546

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_30.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x3f9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "lock-icon.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1c1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "expand-arrow-blue.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_22.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1550

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_10.png"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "arrow-down.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb69

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_09.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1534

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "tab-selected-email.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x342

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_17.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14ed

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_cn_logo_13.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2aa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "banner-sandbox.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2326

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "shopping-cart-enabled.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x16f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_05.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1496

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "banner-demo.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1eed

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "checkbox-checked.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x482

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_13.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1517

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "tab-unselected-phone.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x39f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "paypal_logo_22.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x3c8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/a/a/j;->b:Ljava/util/Hashtable;

    const-string v1, "loading_frame_01.png"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1547

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
