.class Landroid/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/TimePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor blacklist <init>(Landroid/app/TimePickerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-static {p1}, Landroid/app/TimePickerDialog;->-$$Nest$fgetmTimePicker(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TimePicker;->validateInput()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, p1, v0}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-static {p1}, Landroid/app/TimePickerDialog;->-$$Nest$fgetmTimePicker(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TimePicker;->clearFocus()V

    iget-object p0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->dismiss()V

    :cond_0
    return-void
.end method
