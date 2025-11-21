.class public final Lcom/android/internal/app/MessageSamplingConfig;
.super Ljava/lang/Object;
.source "MessageSamplingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/MessageSamplingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcceptableLeftDistance:I

.field private final blacklist mExpirationTimeSinceBootMillis:J

.field private final blacklist mSampledOpCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig$1;

    invoke-direct {v0}, Lcom/android/internal/app/MessageSamplingConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MessageSamplingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move/from16 v3, p1

    iput v3, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-class v1, Landroid/annotation/IntRange;

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0xa4

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    move/from16 v12, p2

    iput v12, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-class v10, Landroid/annotation/IntRange;

    const-string/jumbo v16, "to"

    const-wide/16 v17, 0xa4

    const/4 v11, 0x0

    const-string v13, "from"

    const-wide/16 v14, 0x0

    invoke-static/range {v10 .. v18}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    move-wide/from16 v2, p3

    iput-wide v2, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-class v0, Landroid/annotation/IntRange;

    const-string v4, "from"

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    iput v3, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-class v1, Landroid/annotation/IntRange;

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0xa4

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput v10, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-class v4, Landroid/annotation/IntRange;

    move v6, v10

    const-string/jumbo v10, "to"

    const-wide/16 v11, 0xa4

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput-wide v13, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-class v11, Landroid/annotation/IntRange;

    const-string v15, "from"

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

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

.method public blacklist getAcceptableLeftDistance()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    return p0
.end method

.method public blacklist getExpirationTimeSinceBootMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist getSampledOpCode()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
