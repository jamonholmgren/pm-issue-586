class AppDelegate < PM::Delegate
  def on_load(app, options)
    open TestScreen.new(nav_bar: true)
  end

end

class TestScreen < PM::TableScreen
  searchable placeholder: "wat"

  def table_data
    [{
      cells: (0..99).map do |n|
        {
          title: n.to_s,
          # uncommenting this line causes a crash IF searchable is also active
          accessory: { view: UIView.new },
        }
      end
    }]
  end

end
