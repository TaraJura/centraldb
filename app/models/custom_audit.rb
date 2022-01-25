


class CustomAudit < Audited::Audit
  before_create do 
    self.comment = Audited.store[:customer_id]
  end
end
