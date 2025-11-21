.class public final Landroid/view/inputmethod/InlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;,
        Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IME_AUTOFILL_DEFAULT_SUPPORTED_LOCALES_IS_EMPTY:J = 0xa16e6eeL

.field public static final whitelist SUGGESTION_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHostDisplayId:I

.field private blacklist mHostInputToken:Landroid/os/IBinder;

.field private blacklist mHostPackageName:Ljava/lang/String;

.field private final blacklist mInlinePresentationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private final blacklist mMaxSuggestionCount:I

.field private blacklist mSupportedLocales:Landroid/os/LocaleList;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHostDisplayId()I
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostDisplayId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHostInputToken()Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostInputToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHostPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultMaxSuggestionCount()I
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultMaxSuggestionCount()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSupportedLocales()Landroid/os/LocaleList;
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsRequest$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/lang/String;Landroid/os/LocaleList;Landroid/os/Bundle;Landroid/os/IBinder;ILandroid/widget/inline/InlinePresentationSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/LocaleList;",
            "Landroid/os/Bundle;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v0, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v0, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iput p7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    iput-object p8, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/LocaleList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->unparcelHostInputToken(Landroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/lit16 v0, v0, 0x80

    const/4 v8, 0x0

    if-nez v0, :cond_0

    move-object p1, v8

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/inline/InlinePresentationSpec;

    :goto_0
    iput v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v8, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v8, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v8, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v8, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iput v7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultExtras()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist defaultHostDisplayId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultHostInputToken()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultHostPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist defaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultMaxSuggestionCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method private static blacklist defaultSupportedLocales()Landroid/os/LocaleList;
    .locals 2

    const-wide/32 v0, 0xa16e6ee

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private blacklist extrasEquals(Landroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private blacklist onConstructed()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method private blacklist parcelHostInputToken(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method private blacklist unparcelHostInputToken(Landroid/os/Parcel;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
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
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iget v3, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    iget v3, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    iget-object p1, p1, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist filterContentTypes()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->filterContentTypes()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->filterContentTypes()V

    :cond_1
    return-void
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getHostDisplayId()I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    return p0
.end method

.method public blacklist getHostInputToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist getHostPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getInlinePresentationSpecs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    return-object p0
.end method

.method public whitelist getMaxSuggestionCount()I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    return p0
.end method

.method public whitelist getSupportedLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist setHostDisplayId(I)V
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    return-void
.end method

.method public blacklist setHostInputToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InlineSuggestionsRequest { maxSuggestionCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inlinePresentationSpecs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedLocales = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostInputToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inlineTooltipPresentationSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->parcelHostInputToken(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_2
    return-void
.end method
