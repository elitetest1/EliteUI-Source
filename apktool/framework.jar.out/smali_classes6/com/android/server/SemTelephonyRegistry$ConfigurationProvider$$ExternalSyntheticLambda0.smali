.class public final synthetic Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist getOrThrow()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {p0}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;->lambda$isRegistrationLimitEnabledInPlatformCompat$1(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
