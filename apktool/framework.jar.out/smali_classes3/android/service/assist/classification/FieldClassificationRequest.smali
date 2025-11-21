.class public final Landroid/service/assist/classification/FieldClassificationRequest;
.super Ljava/lang/Object;
.source "FieldClassificationRequest.java"

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
            "Landroid/service/assist/classification/FieldClassificationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAssistStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/assist/classification/FieldClassificationRequest$1;

    invoke-direct {v0}, Landroid/service/assist/classification/FieldClassificationRequest$1;-><init>()V

    sput-object v0, Landroid/service/assist/classification/FieldClassificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/assist/AssistStructure;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/assist/classification/FieldClassificationRequest;->mAssistStructure:Landroid/app/assist/AssistStructure;

    const-class p0, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/assist/AssistStructure;

    iput-object p1, p0, Landroid/service/assist/classification/FieldClassificationRequest;->mAssistStructure:Landroid/app/assist/AssistStructure;

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

.method public whitelist getAssistStructure()Landroid/app/assist/AssistStructure;
    .locals 0

    iget-object p0, p0, Landroid/service/assist/classification/FieldClassificationRequest;->mAssistStructure:Landroid/app/assist/AssistStructure;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldClassificationRequest { assistStructure = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/service/assist/classification/FieldClassificationRequest;->mAssistStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/service/assist/classification/FieldClassificationRequest;->mAssistStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
