.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$Builder;,
        Lcom/android/internal/widget/VerifyCredentialResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final greylist-max-o OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final greylist-max-o RESPONSE_ERROR:I = -0x1

.field public static final greylist-max-o RESPONSE_OK:I = 0x0

.field public static final greylist-max-o RESPONSE_RETRY:I = 0x1

.field public static final blacklist RESPONSE_SKIP:I = 0x1

.field public static final blacklist SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private final blacklist mGatekeeperHAT:[B

.field private final blacklist mGatekeeperPasswordHandle:J

.field private final greylist-max-o mResponseCode:I

.field private blacklist mSecret:[B

.field private final greylist-max-o mTimeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II[BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-void
.end method

.method synthetic constructor blacklist <init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-void
.end method

.method private constructor blacklist <init>(II[BJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    iput-object p6, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method public static blacklist fromError()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method

.method public static greylist-max-o fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "VerifyCredentialResponse"

    const-string/jumbo v0, "verifyChallenge response had no associated payload"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method


# virtual methods
.method public blacklist containsGatekeeperPasswordHandle()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist destroy()V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    return-void
.end method

.method public blacklist getGatekeeperHAT()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    return-object p0
.end method

.method public blacklist getGatekeeperPasswordHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-wide v0
.end method

.method public greylist-max-o getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return p0
.end method

.method public blacklist getSecret()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-object p0
.end method

.method public greylist-max-o getTimeout()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return p0
.end method

.method public blacklist isMatched()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setSecret([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-void
.end method

.method public greylist-max-o stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", GK HAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", GK PW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
