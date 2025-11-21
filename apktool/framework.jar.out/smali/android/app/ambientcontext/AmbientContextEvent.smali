.class public final Landroid/app/ambientcontext/AmbientContextEvent;
.super Ljava/lang/Object;
.source "AmbientContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/AmbientContextEvent$EventCode;,
        Landroid/app/ambientcontext/AmbientContextEvent$LevelValue;,
        Landroid/app/ambientcontext/AmbientContextEvent$Builder;,
        Landroid/app/ambientcontext/AmbientContextEvent$Level;,
        Landroid/app/ambientcontext/AmbientContextEvent$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_BACK_DOUBLE_TAP:I = 0x3

.field public static final whitelist EVENT_COUGH:I = 0x1

.field public static final whitelist EVENT_SNORE:I = 0x2

.field public static final whitelist EVENT_UNKNOWN:I = 0x0

.field public static final whitelist EVENT_VENDOR_WEARABLE_START:I = 0x186a0

.field public static final whitelist KEY_VENDOR_WEARABLE_EVENT_NAME:Ljava/lang/String; = "wearable_event_name"

.field public static final whitelist LEVEL_HIGH:I = 0x5

.field public static final whitelist LEVEL_LOW:I = 0x1

.field public static final whitelist LEVEL_MEDIUM:I = 0x3

.field public static final whitelist LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final whitelist LEVEL_MEDIUM_LOW:I = 0x2

.field public static final whitelist LEVEL_UNKNOWN:I

.field static blacklist sParcellingForEndTime:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForStartTime:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:I

.field private final blacklist mDensityLevel:I

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private final blacklist mEventType:I

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private final blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .locals 1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultDensityLevel()I
    .locals 1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->defaultDensityLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultEndTime()Ljava/time/Instant;
    .locals 1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->defaultEndTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultEventType()I
    .locals 1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->defaultEventType()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultStartTime()Ljava/time/Instant;
    .locals 1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->defaultStartTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultVendorData()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->defaultVendorData()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForStartTime:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForStartTime:Lcom/android/internal/util/Parcelling;

    :cond_0
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForEndTime:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForEndTime:Lcom/android/internal/util/Parcelling;

    :cond_1
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEvent$1;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEvent$1;-><init>()V

    sput-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/time/Instant;Ljava/time/Instant;IILandroid/os/PersistableBundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEventType:I

    const-class v0, Landroid/app/ambientcontext/AmbientContextEvent$EventCode;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mStartTime:Ljava/time/Instant;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEndTime:Ljava/time/Instant;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p4, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mConfidenceLevel:I

    const-class p1, Landroid/app/ambientcontext/AmbientContextEvent$LevelValue;

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p5, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mDensityLevel:I

    const-class p1, Landroid/app/ambientcontext/AmbientContextEvent$LevelValue;

    invoke-static {p1, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p6, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mVendorData:Landroid/os/PersistableBundle;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForStartTime:Lcom/android/internal/util/Parcelling;

    invoke-interface {v1, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Instant;

    sget-object v2, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForEndTime:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEventType:I

    const-class v5, Landroid/app/ambientcontext/AmbientContextEvent$EventCode;

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mStartTime:Ljava/time/Instant;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEndTime:Ljava/time/Instant;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mConfidenceLevel:I

    const-class v0, Landroid/app/ambientcontext/AmbientContextEvent$LevelValue;

    invoke-static {v0, v6, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v4, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mDensityLevel:I

    const-class v0, Landroid/app/ambientcontext/AmbientContextEvent$LevelValue;

    invoke-static {v0, v6, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mVendorData:Landroid/os/PersistableBundle;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v6, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultConfidenceLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultDensityLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultEndTime()Ljava/time/Instant;
    .locals 1

    sget-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    return-object v0
.end method

.method private static blacklist defaultEventType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultStartTime()Ljava/time/Instant;
    .locals 1

    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    return-object v0
.end method

.method private static blacklist defaultVendorData()Landroid/os/PersistableBundle;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method public static blacklist eventToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const v0, 0x186a0

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EVENT_VENDOR_WEARABLE_START"

    return-object p0

    :cond_1
    const-string p0, "EVENT_BACK_DOUBLE_TAP"

    return-object p0

    :cond_2
    const-string p0, "EVENT_SNORE"

    return-object p0

    :cond_3
    const-string p0, "EVENT_COUGH"

    return-object p0

    :cond_4
    const-string p0, "EVENT_UNKNOWN"

    return-object p0
.end method

.method public static blacklist levelToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LEVEL_HIGH"

    return-object p0

    :cond_1
    const-string p0, "LEVEL_MEDIUM_HIGH"

    return-object p0

    :cond_2
    const-string p0, "LEVEL_MEDIUM"

    return-object p0

    :cond_3
    const-string p0, "LEVEL_MEDIUM_LOW"

    return-object p0

    :cond_4
    const-string p0, "LEVEL_LOW"

    return-object p0

    :cond_5
    const-string p0, "LEVEL_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getConfidenceLevel()I
    .locals 0

    iget p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mConfidenceLevel:I

    return p0
.end method

.method public whitelist getDensityLevel()I
    .locals 0

    iget p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mDensityLevel:I

    return p0
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .locals 0

    iget-object p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEndTime:Ljava/time/Instant;

    return-object p0
.end method

.method public whitelist getEventType()I
    .locals 0

    iget p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEventType:I

    return p0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .locals 0

    iget-object p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mStartTime:Ljava/time/Instant;

    return-object p0
.end method

.method public whitelist getVendorData()Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mVendorData:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmbientContextEvent { eventType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEndTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", densityLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mDensityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForStartTime:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mStartTime:Ljava/time/Instant;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/app/ambientcontext/AmbientContextEvent;->sParcellingForEndTime:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mEndTime:Ljava/time/Instant;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mConfidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mDensityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/app/ambientcontext/AmbientContextEvent;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
