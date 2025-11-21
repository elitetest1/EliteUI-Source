.class public final Landroid/view/translation/TranslationContext;
.super Ljava/lang/Object;
.source "TranslationContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationContext$Builder;,
        Landroid/view/translation/TranslationContext$TranslationFlag;,
        Landroid/view/translation/TranslationContext$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DEFINITIONS:I = 0x4

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x1

.field public static final whitelist FLAG_TRANSLITERATION:I = 0x2


# instance fields
.field private final blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private final blacklist mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mTranslationFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultActivityId()Landroid/app/assist/ActivityId;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultActivityId()Landroid/app/assist/ActivityId;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationFlags()I
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultTranslationFlags()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationContext$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationSpec;

    sget-object v1, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, p1}, Landroid/view/translation/TranslationContext;->unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;

    move-result-object p1

    iput-object v0, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILandroid/app/assist/ActivityId;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 p1, 0x7

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultActivityId()Landroid/app/assist/ActivityId;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTranslationFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parcelActivityId(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    return-void
.end method

.method static blacklist singleTranslationFlagToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FLAG_DEFINITIONS"

    return-object p0

    :cond_1
    const-string p0, "FLAG_TRANSLITERATION"

    return-object p0

    :cond_2
    const-string p0, "FLAG_LOW_LATENCY"

    return-object p0
.end method

.method public static blacklist translationFlagToString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/app/assist/ActivityId;

    invoke-direct {p0, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getActivityId()Landroid/app/assist/ActivityId;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-object p0
.end method

.method public whitelist getSourceSpec()Landroid/view/translation/TranslationSpec;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object p0
.end method

.method public whitelist getTargetSpec()Landroid/view/translation/TranslationSpec;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object p0
.end method

.method public whitelist getTranslationFlags()I
    .locals 0

    iget p0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TranslationContext { sourceSpec = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", translationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-static {v1}, Landroid/view/translation/TranslationContext;->translationFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Landroid/view/translation/TranslationContext;->parcelActivityId(Landroid/os/Parcel;I)V

    return-void
.end method
