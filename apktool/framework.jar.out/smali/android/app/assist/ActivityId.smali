.class public final Landroid/app/assist/ActivityId;
.super Ljava/lang/Object;
.source "ActivityId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/ActivityId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityId:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/assist/ActivityId$1;

    invoke-direct {v0}, Landroid/app/assist/ActivityId$1;-><init>()V

    sput-object v0, Landroid/app/assist/ActivityId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    iput-object p2, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

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

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/app/assist/ActivityId;

    iget v2, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    iget v3, p1, Landroid/app/assist/ActivityId;->mTaskId:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-eqz p0, :cond_3

    iget-object p1, p1, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p1, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-nez p0, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getTaskId()I
    .locals 0

    iget p0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    return p0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityId { taskId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
