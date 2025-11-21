.class public final Landroid/service/credentials/BeginGetCredentialOption;
.super Ljava/lang/Object;
.source "BeginGetCredentialOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist BUNDLE_ID_KEY:Ljava/lang/String; = "android.service.credentials.BeginGetCredentialOption.BUNDLE_ID_KEY"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/credentials/BeginGetCredentialOption$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginGetCredentialOption$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginGetCredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginGetCredentialOption-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginGetCredentialOption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    const-string/jumbo p1, "type must not be empty"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/service/credentials/BeginGetCredentialOption;->addIdToBundle()V

    return-void
.end method

.method private blacklist addIdToBundle()V
    .locals 2

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    const-string v1, "android.service.credentials.BeginGetCredentialOption.BUNDLE_ID_KEY"

    iget-object p0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCandidateQueryData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetCredentialOption {type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", candidateQueryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/service/credentials/BeginGetCredentialOption;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/service/credentials/BeginGetCredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/service/credentials/BeginGetCredentialOption;->mId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
