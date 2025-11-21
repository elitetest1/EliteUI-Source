.class public final Landroid/view/translation/TranslationResponseValue;
.super Ljava/lang/Object;
.source "TranslationResponseValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponseValue$Builder;,
        Landroid/view/translation/TranslationResponseValue$Status;,
        Landroid/view/translation/TranslationResponseValue$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFINITIONS:Ljava/lang/String; = "android.view.translation.extra.DEFINITIONS"

.field public static final whitelist STATUS_ERROR:I = 0x1

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mStatusCode:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultText()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationResponseValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponseValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponseValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "statusCode was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but must be one of: STATUS_SUCCESS(0), STATUS_ERROR(1)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    iput v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "statusCode was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but must be one of: STATUS_SUCCESS(0), STATUS_ERROR(1)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultExtras()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist defaultText()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTransliteration()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist extrasEquals(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist forError()Landroid/view/translation/TranslationResponseValue;
    .locals 4

    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist statusToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "STATUS_ERROR"

    return-object p0

    :cond_1
    const-string p0, "STATUS_SUCCESS"

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/translation/TranslationResponseValue;

    iget v2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    iget v3, p1, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Landroid/view/translation/TranslationResponseValue;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getStatusCode()I
    .locals 0

    iget p0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    return p0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getTransliteration()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TranslationResponseValue { statusCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-static {v1}, Landroid/view/translation/TranslationResponseValue;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transliteration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
