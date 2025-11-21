.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CLOCK_TYPE_DEFAULT:I = 0x0

.field public static final blacklist CLOCK_TYPE_DUAL:I = 0x110

.field public static final blacklist CLOCK_TYPE_THREAD_CPU:I = 0x100

.field public static final blacklist CLOCK_TYPE_WALL:I = 0x10

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OUTPUT_VERSION_DEFAULT:I = 0x1

.field public static final blacklist PROFILE_TYPE_LOW_OVERHEAD:I = 0x1

.field public static final blacklist PROFILE_TYPE_REGULAR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ProfilerInfo"

.field public static final blacklist TRACE_FORMAT_VERSION_SHIFT:I = 0x1


# instance fields
.field public final greylist-max-o agent:Ljava/lang/String;

.field public final greylist-max-o attachAgentDuringBind:Z

.field public final greylist-max-o autoStopProfiler:Z

.field public final blacklist clockType:I

.field public greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field public final greylist-max-o profileFile:Ljava/lang/String;

.field public final blacklist profilerOutputVersion:I

.field public final greylist-max-o samplingInterval:I

.field public final greylist-max-o streamingOutput:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ProfilerInfo$1;

    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/ProfilerInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-object v0, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iget v0, p1, Landroid/app/ProfilerInfo;->clockType:I

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget p1, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput p1, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean p5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput p8, p0, Landroid/app/ProfilerInfo;->clockType:I

    iput-object p6, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-boolean p7, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iput p9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    return-void
.end method

.method public static blacklist getClockTypeFromString(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "thread-cpu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x100

    return p0

    :cond_0
    const-string/jumbo v0, "wall"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x10

    return p0

    :cond_1
    const-string v0, "dual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x110

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getFlagsForOutputVersion(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    sub-int/2addr p0, v0

    shl-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public greylist-max-o closeFd()V
    .locals 3

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ProfilerInfo"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    iget-object p0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const-wide v1, 0x10500000002L

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000004L

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000005L

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10900000006L

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000007L

    iget v2, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000008L

    iget p0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
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
    check-cast p1, Landroid/app/ProfilerInfo;

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v3, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget v3, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-boolean v3, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v3, p1, Landroid/app/ProfilerInfo;->clockType:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iget p1, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    add-int/2addr v1, p0

    return v1
.end method

.method public greylist-max-o setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;
    .locals 10

    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget v8, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v9}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget p2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
