.class public final Landroid/view/translation/TranslationCapability;
.super Ljava/lang/Object;
.source "TranslationCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationCapability$ModelState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_AVAILABLE_TO_DOWNLOAD:I = 0x1

.field public static final whitelist STATE_DOWNLOADING:I = 0x2

.field public static final whitelist STATE_NOT_AVAILABLE:I = 0x4

.field public static final whitelist STATE_ON_DEVICE:I = 0x3

.field public static final blacklist STATE_REMOVED_AND_AVAILABLE:I = 0x3e8


# instance fields
.field private final blacklist mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mState:I

.field private final blacklist mSupportedTranslationFlags:I

.field private final blacklist mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mUiTranslationEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationCapability$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationCapability$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ZI)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sourceSpec should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "targetSpec should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    iput-object p2, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    iput-object p3, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    iput-boolean p4, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    iput p5, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/TranslationSpec;

    sget-object v4, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    const/16 v1, 0x3e8

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "state was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but must be one of: STATE_AVAILABLE_TO_DOWNLOAD(1), STATE_DOWNLOADING(2), STATE_ON_DEVICE(3), STATE_NOT_AVAILABLE(4), STATE_REMOVED_AND_AVAILABLE(1000)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iput-object v3, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean v0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    iput p1, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    const-class p0, Landroid/view/translation/TranslationContext$TranslationFlag;

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist modelStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "STATE_REMOVED_AND_AVAILABLE"

    return-object p0

    :cond_1
    const-string p0, "STATE_NOT_AVAILABLE"

    return-object p0

    :cond_2
    const-string p0, "STATE_ON_DEVICE"

    return-object p0

    :cond_3
    const-string p0, "STATE_DOWNLOADING"

    return-object p0

    :cond_4
    const-string p0, "STATE_AVAILABLE_TO_DOWNLOAD"

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSourceSpec()Landroid/view/translation/TranslationSpec;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object p0
.end method

.method public whitelist getState()I
    .locals 0

    iget p0, p0, Landroid/view/translation/TranslationCapability;->mState:I

    return p0
.end method

.method public whitelist getSupportedTranslationFlags()I
    .locals 0

    iget p0, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    return p0
.end method

.method public whitelist getTargetSpec()Landroid/view/translation/TranslationSpec;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object p0
.end method

.method public whitelist isUiTranslationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TranslationCapability { state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    invoke-static {v1}, Landroid/view/translation/TranslationCapability;->modelStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiTranslationEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportedTranslationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/view/translation/TranslationCapability;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
