.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_HAS_SESSION:I = 0x4

.field private static final blacklist FLAG_IS_VIRTUAL_INT:I = 0x1

.field private static final blacklist FLAG_IS_VIRTUAL_LONG:I = 0x2

.field public static final blacklist NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

.field public static final blacklist NO_SESSION:I


# instance fields
.field private blacklist mFlags:I

.field private blacklist mSessionId:I

.field private final greylist-max-o mViewId:I

.field private final blacklist mVirtualIntId:I

.field private final blacklist mVirtualLongId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    sput-object v0, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .locals 6

    int-to-long v3, p2

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method private constructor blacklist <init>(IIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    iput p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    long-to-int p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p3, -0x1

    :goto_1
    iput-wide p3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iput p5, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIJILandroid/view/autofill/AutofillId-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;I)V
    .locals 6

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;II)V
    .locals 6

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v1, 0x5

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;JI)V
    .locals 6

    const/4 v1, 0x6

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public static whitelist create(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    return-object v0
.end method

.method public static blacklist withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;
    .locals 7

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v2, v0, -0x5

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    int-to-long v0, v0

    :goto_0
    move-wide v4, v0

    new-instance v1, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/view/autofill/AutofillId;

    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget p0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    iget p1, p1, Landroid/view/autofill/AutofillId;->mSessionId:I

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public blacklist equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide p0, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long p0, v2, p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public whitelist getAutofillVirtualId()I
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return p0
.end method

.method public whitelist getSessionId()I
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return p0
.end method

.method public whitelist getViewId()I
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return p0
.end method

.method public blacklist getVirtualChildIntId()I
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return p0
.end method

.method public blacklist getVirtualChildLongId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    return-wide v0
.end method

.method public blacklist hasSession()Z
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist isInAutofillSession()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result p0

    return p0
.end method

.method public blacklist isNonVirtual()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isVirtual()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isVirtualInt()Z
    .locals 1

    iget p0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVirtualLong()Z
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist resetSessionId()V
    .locals 1

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return-void
.end method

.method public blacklist setSessionId(I)V
    .locals 1

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    iput p1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2
    return-void
.end method
