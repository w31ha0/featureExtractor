.class public Lorg/linphone/core/LinphoneAccountCreator$Status;
.super Ljava/lang/Object;
.source "LinphoneAccountCreator.java"


# static fields
.field public static final AccountActivated:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountAlreadyActivated:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountCreated:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountExist:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountExistWithAlias:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountLinked:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountNotActivated:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountNotCreated:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountNotExist:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final AccountNotLinked:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final CountryCodeInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final DisplayNameInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final DomainInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final EmailInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final ErrorServer:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final Failed:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final Ok:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PasswordTooLong:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PasswordTooShort:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PhoneNumberInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PhoneNumberNotUsed:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PhoneNumberTooLong:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PhoneNumberTooShort:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PhoneNumberUsedAccount:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final PhoneNumberUsedAlias:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final RouteInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final TransportNotSupported:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final UsernameInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final UsernameInvalidSize:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final UsernameTooLong:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field public static final UsernameTooShort:Lorg/linphone/core/LinphoneAccountCreator$Status;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneAccountCreator$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->values:Ljava/util/Vector;

    .line 44
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x0

    const-string/jumbo v2, "Ok"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->Ok:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 45
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x1

    const-string/jumbo v2, "Failed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->Failed:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 46
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x2

    const-string/jumbo v2, "AccountCreated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountCreated:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 47
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x3

    const-string/jumbo v2, "AccountNotCreated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountNotCreated:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 48
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x4

    const-string/jumbo v2, "AccountExist"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountExist:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 49
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x5

    const-string/jumbo v2, "AccountExistWithAlias"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountExistWithAlias:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 50
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x6

    const-string/jumbo v2, "AccountNotExist"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountNotExist:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 51
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/4 v1, 0x7

    const-string/jumbo v2, "AccountActivated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountActivated:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 52
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x8

    const-string/jumbo v2, "AccountAlreadyActivated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountAlreadyActivated:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 53
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x9

    const-string/jumbo v2, "AccountNotActivated"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountNotActivated:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 54
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0xa

    const-string/jumbo v2, "AccountLinked"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountLinked:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 55
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0xb

    const-string/jumbo v2, "AccountNotLinked"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->AccountNotLinked:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 56
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0xc

    const-string/jumbo v2, "EmailInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->EmailInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 57
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0xd

    const-string/jumbo v2, "UsernameInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->UsernameInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 58
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0xe

    const-string/jumbo v2, "UsernameTooShort"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->UsernameTooShort:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 59
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0xf

    const-string/jumbo v2, "UsernameTooLong"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->UsernameTooLong:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 60
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x10

    const-string/jumbo v2, "UsernameInvalidSize"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->UsernameInvalidSize:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 61
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x11

    const-string/jumbo v2, "PhoneNumberInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PhoneNumberInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 62
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x12

    const-string/jumbo v2, "PhoneNumberTooShort"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PhoneNumberTooShort:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 63
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x13

    const-string/jumbo v2, "PhoneNumberTooLong"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PhoneNumberTooLong:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 64
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x14

    const-string/jumbo v2, "PhoneNumberUsed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PhoneNumberUsedAccount:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 65
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x15

    const-string/jumbo v2, "PhoneNumberUsed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PhoneNumberUsedAlias:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 66
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x16

    const-string/jumbo v2, "PhoneNumberNotUsed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PhoneNumberNotUsed:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 67
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x17

    const-string/jumbo v2, "PasswordTooShort"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PasswordTooShort:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 68
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x18

    const-string/jumbo v2, "PasswordTooLong"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->PasswordTooLong:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 69
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x19

    const-string/jumbo v2, "DomainInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->DomainInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 70
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x1a

    const-string/jumbo v2, "RouteInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->RouteInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 71
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x1b

    const-string/jumbo v2, "DisplayNameInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->DisplayNameInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 72
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x1c

    const-string/jumbo v2, "TransportNotSupported"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->TransportNotSupported:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 73
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x1d

    const-string/jumbo v2, "CountryCodeInvalid"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->CountryCodeInvalid:Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 74
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    const/16 v1, 0x1e

    const-string/jumbo v2, "ErrorServer"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreator$Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->ErrorServer:Lorg/linphone/core/LinphoneAccountCreator$Status;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lorg/linphone/core/LinphoneAccountCreator$Status;->mValue:I

    .line 78
    sget-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    iput-object p2, p0, Lorg/linphone/core/LinphoneAccountCreator$Status;->mStringValue:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 84
    sget-object v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneAccountCreator$Status;

    .line 85
    iget v2, v0, Lorg/linphone/core/LinphoneAccountCreator$Status;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 83
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Status not found ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/linphone/core/LinphoneAccountCreator$Status;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/linphone/core/LinphoneAccountCreator$Status;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/linphone/core/LinphoneAccountCreator$Status;->mValue:I

    return v0
.end method
