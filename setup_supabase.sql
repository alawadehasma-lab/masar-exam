-- جدول نتائج امتحانات مسار (إلكتروني + ورقي ضوئي) — يُنفَّذ مرة واحدة في Supabase > SQL Editor
create table if not exists exam_results (
  id              bigint generated always as identity primary key,
  created_at      timestamptz default now(),
  exam_id         text not null,          -- u1_g11 | istithna_g12
  exam_title      text,
  student_name    text not null,
  class_name      text not null,          -- يطابق class_name في جدول students
  score           int  not null,
  total           int  not null,
  percent         int,
  skills          jsonb,                  -- {"القراءة":"7/9", ...}
  confident_wrong int default 0,          -- أخطاء واثقة
  tab_leaves      int default 0,          -- مرات مغادرة الصفحة
  auto_submitted  boolean default false,
  duration_sec    int,
  mode            text default 'electronic', -- electronic | paper_omr
  answers         jsonb
);

-- السماح للصفحة بالإضافة فقط (لا قراءة ولا تعديل) بالمفتاح العام
alter table exam_results enable row level security;
create policy "insert only from exam page" on exam_results
  for insert to anon with check (score between 0 and total);
