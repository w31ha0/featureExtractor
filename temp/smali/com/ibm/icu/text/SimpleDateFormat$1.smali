.class synthetic Lcom/ibm/icu/text/SimpleDateFormat$1;
.super Ljava/lang/Object;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$text$DisplayContext:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2029
    invoke-static {}, Lcom/ibm/icu/text/DisplayContext;->values()[Lcom/ibm/icu/text/DisplayContext;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
