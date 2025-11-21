.class public final Landroid/service/voice/VisibleActivityInfo;
.super Ljava/lang/Object;
.source "VisibleActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_ADDED:I = 0x1

.field public static final blacklist TYPE_ACTIVITY_REMOVED:I = 0x2


# instance fields
.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/VisibleActivityInfo$1;

    invoke-direct {v0}, Landroid/service/voice/VisibleActivityInfo$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisibleActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iput-object p2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput v0, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iput-object p1, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    const-class p0, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
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
    check-cast p1, Landroid/service/voice/VisibleActivityInfo;

    iget v2, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iget v3, p1, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .locals 2

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    iget v1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iget-object p0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, p0}, Landroid/service/voice/VoiceInteractionSession$ActivityId;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VisibleActivityInfo { taskId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", assistToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
